Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5129619B
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657895812;
	h=To:Subject:From:Message-Id:Date;
	bh=YBNeW8ki76YHFs8GPvVwosZUgAiyi7DQO/AjzUkktmc=;
	b=fMb2En/4pw/CZOpejxcucTVchu9ru4KZ9Pd4NJ0vEFtF5pwpv1dNMxPBK/jG79ew
	nDZSp61lnG4qpHj5R55DAzsDh1t1hOIwTPrxswD5XxBRfvuXE5cREx1Qm74tNvNO8jE
	Ocs1kXx/AIcTrj0TILZ3jDhhEPQWYmXMR40xQaOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657895812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YBNeW8ki76YHFs8GPvVwosZUgAiyi7DQO/AjzUkktmc=;
	b=H38ddm0ukDOnEiqDED8qBwF2oUHPQOUGYN6+aJ++QIlVMfee550CtXlugXd4DYsF
	Z4zD1HK4I6riLGr9RMkCx4ZD6QN4ddflhPcG0YX9RCE4JGg6waVQSD3JB7VxbzPH+t0
	yx4aWbe5jdHzw5OujcgY9fMOITVAdrJGc+vOQe5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182024a7d06-43f8f466-14ed-49a6-b37c-c0f434f6ad67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55e410b639d975065e06032cfd73f1c430e1f7848f5ab80e9018668b5d3cc46d
Date: Fri, 15 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657895812
