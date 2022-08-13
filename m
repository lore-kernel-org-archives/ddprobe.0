Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A19803
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660392652;
	h=To:Subject:From:Message-Id:Date;
	bh=ThOVA0N7n+/Zyls+VLltpsq9OiOmSu3BfLLURenFMUA=;
	b=MKfsKadH6hNa6h64snfDadJ5KFYYZq7OmQY4ZXCIXrAqfRWIVxP7xVwMZATdu1Mk
	Ht3VFnQlq/O4eNU5uaB+LM3d973kTyq7UZ3y0fjVHD/tk9T1g1jqe0Livx+D2ZF0dKk
	jXwz4vmTGGwX2+F9xd8kEP5HV1A2uz2C4I1xCWIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660392652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ThOVA0N7n+/Zyls+VLltpsq9OiOmSu3BfLLURenFMUA=;
	b=MnltKRLxWhAwE6WQ8BUsuIFKo04rloBt+r+VBQyeEYeVWrPONBV3baPAHracolGT
	K9mDghI0qWSzGf7jiBAtU32cBCJD0W2hRyy8HdQBdrkppZcdcfmSBrrnCOfhCA1YA/5
	8QJjXejCh8HBFaQ/6wTBcsrGrtNTDOFK4PQ5HQyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182971d3f30-8599d83a-7433-41f5-8158-131fa94a8a1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd9f6a9a453941b9af000f771de2e8bf099024794ffec30fbf146ff00067197f
Date: Sat, 13 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660392652
