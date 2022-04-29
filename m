Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE441869
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 21:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651266418;
	h=To:Subject:From:Message-Id:Date;
	bh=PvQzYPf2he5Wfv0YMc+ilCVqBN8KKMYMYRAelBlVnpc=;
	b=AGtXmO19/2hoZGbXPjELB2p8hyGCkkCkQ4nAwBLhm99TYc7qPC6IGbzYbwnHn31K
	cRrTsDtlD6NahJSRFTl/bB4wb+i/Ipa+mVY9vMokb6JGsXtyL3UTqfXIwdcNWRFOMbt
	Cvosao7jKYy+hmJFsBh4XNWs2GL6lYUXxx+mzS1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651266418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PvQzYPf2he5Wfv0YMc+ilCVqBN8KKMYMYRAelBlVnpc=;
	b=FkjBklC2bhSeHj5C+NfeAIAVi88eY7vjmSlqd1iu6eTVKc/5ZR/VEsqZRP8KXVaw
	+z/pvF9J6GD3uo2eUf9mMDVAYqRv6T12ttWuHe48jqGKKLJchGnJ+a2RkkLqNHt4Y+U
	RiIsegUlbS51NaNdCa8XVi9VRtBB9N+zQiklgMus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807725f689-12c3ffb3-b2ee-4d0e-ad6b-3584a135769d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d971050c7c7f2cb7ace67823d298aea62d2431ddd9850fb4faa2d7d83a685127
Date: Fri, 29 Apr 2022 21:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651266418
