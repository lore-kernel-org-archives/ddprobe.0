Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AB020E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 03:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653190559;
	h=To:Subject:From:Message-Id:Date;
	bh=1KDLGM5FL8vH8z+eDzOVKKuAmN+jpwEeDaI+yCCJ8pI=;
	b=ReIvBoSLXPGMM9y7/6IvoWLeVfXmyxd2WQoziQ6o7aMjl6Vhev+xWmYLd9u/syBz
	fUSVPBxsj8GanqjT4JArbTWgp5bAc/PDd1dvPgOKWKP3iDOUo09oUCWN4Mw18JZu8uG
	rUkFFlIWuH8nAbQAqxus0/gZEjHQF2RaS3I+NSeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653190559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1KDLGM5FL8vH8z+eDzOVKKuAmN+jpwEeDaI+yCCJ8pI=;
	b=gvqtUM5bcirCMPbzoYgRWSgceNhKfBvAjvbwbNj0KkhWfSuIaHeNvALRAI8+q8Zu
	aXA2cJb1fmn+XhztTgv+grCt+BIdLSewS+0eacCPAw2Ia1g5hff//O7QmQ5fQp5eAIa
	nbcCrrsHLDW7F5J37UFNDm+7vpMolNwA/zpasyaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9d60619-d337ca85-0386-413b-bfed-8546caa41370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 143565a6aabc46cc12c9ff15fe8b04abb1cb1a4be3a458b31026c2e03f30b6b2
Date: Sun, 22 May 2022 03:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653190559
