Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C4B622
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 01:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649468338;
	h=To:Subject:From:Message-Id:Date;
	bh=LIMrNy/SYgU26OebUw6XoB6mKk7KYaXENpqVgH0orG4=;
	b=Zob5puekunRIFyxjmNM4TGfsYt6GNo3G42Jva9m4z8XAkaRWX+Z5hsztsCFx3hIm
	1AtHcDN8bMyDFSLufY1w9tAc16VDuCLgmP3F+N+RpyvOmcyECH/kE2I5yxvjrS1qZaN
	4NFQfyBAE0UiFnx5iZkbyGiqBT7vRZzLsHOclEIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649468338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LIMrNy/SYgU26OebUw6XoB6mKk7KYaXENpqVgH0orG4=;
	b=J8mbjR3nmC34pUeYrryeDdKQG2uV56AnzW5WXGWj1qpfZBTsQ6/Xv3JdWlSwFHDy
	mmyyIqfqK9E/lGZSeLr8m5sjEO/LEM/8vYDLMyFlXEwcFnLAGmeIqz8H1EK52oTBNrA
	yhdEjcrGHQP/09lKiQITtqg2eehmeHmMnCpHjh0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800bf97095-0c34a837-2439-4874-b23e-2a2d93b43ceb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b39802f46176a386122ff8bbd1a5990143c5157accd8bf9507a2903911d83bbf
Date: Sat, 9 Apr 2022 01:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649468338
