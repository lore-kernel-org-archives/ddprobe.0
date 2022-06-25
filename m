Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2263215A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656120412;
	h=To:Subject:From:Message-Id:Date;
	bh=D8SGk3N7Am1rYXdFwHHaSWwprZ3rpj0s8Kp8R4oihmM=;
	b=Gu4klsO+gLqTaWLkDsTOkaL66liilFSy/cNKFkFxjB1yOq8dU1TeQaDomi0gCHfH
	bUzeIUkPSTqdwdC1fp2u28dGZpd5vJUk9L+xxyOGzAeKXkLiKOePnfh7G8VZuNToRe5
	/v2FtGoVLvbLfkYpXk8vJEGvokyZqXYhWllEqmAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656120412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D8SGk3N7Am1rYXdFwHHaSWwprZ3rpj0s8Kp8R4oihmM=;
	b=BU/cS4lvIak6IpFB8JRppyjkdZ0c4kQnPPuqVTI3kdPcIHL9Otim+sduztUo7nIo
	EQO+EtD5lWW4nMdFQpkn89rPO/l+wILfp624f3gkvQzwNKpwLyRMcHGdfFGtyrmR7tP
	yIWpUIL+ZiAUShzpDmhbs4l+Eq2/8kqoJEoJaw5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819878089e-79ed6b06-ed02-4c28-a2f4-407999111f82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1213bd7b318235aedfc74802bcf41521bde6057db771bcb0647fbfa0ab23169e
Date: Sat, 25 Jun 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656120412
