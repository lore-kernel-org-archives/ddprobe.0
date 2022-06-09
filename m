Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDD17A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 00:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654733159;
	h=To:Subject:From:Message-Id:Date;
	bh=hY3UVx8wMdfM4N2NLjSM9z546U1apcJ2/MnXlB90S7k=;
	b=RAIzsWDpO5w1SFqNIlaF3QQz378+W26ZugIkGvKIj9y1GXMn6mM1zNQWg0wUuJmH
	pF2XBsjC76gV8yYrigh0J8dpX6EiEUz0Q42bdSWNGFPjDGJFMSemraB6xq+nr7sG9eD
	Rm+Xo9Fn1UMjld2HvrPifg6OSHTFmWc30pJ2qSDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654733159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hY3UVx8wMdfM4N2NLjSM9z546U1apcJ2/MnXlB90S7k=;
	b=Io7QWt1gHLi6/VnKsXLKi/nipnF7a3H9BFBS/TiqFhqWzodUti0iv+U0oBiQNTwp
	JBOc/9fbBR+hCFrR5bs3k+NrP68Dvumwawbi+8W10A1kpeXJf5BGQzjLOxnRT4zB+Vk
	n8beXkHadwzrdwgAN0W7WEcE2dmA7G3Lp7CeffHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145c83b52-49b2ed51-ddbd-4e63-82e4-516844edcdb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4318ee188908f403453333c514f91aaf024ee54b86c6a948723410484d12c451
Date: Thu, 9 Jun 2022 00:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654733159
