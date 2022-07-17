Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F0680F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658059012;
	h=To:Subject:From:Message-Id:Date;
	bh=GA0Dsq/Htn/89tvd5kZasS+tVCtjIn1iJFkxxTJXudc=;
	b=IC5AahOYjhZbJbabDgKgHF1r77npEgWBo+O+6zI+iOtTbC/E6yaQjPVqCJUVgj/T
	rNBNrQAxVMuAy9XSi4bCZdklCYaoS0I3WGuOj7leVxRFJBANOenQr41vYJwsH+mtYx7
	4uzC6g1+wAfDW5sZ/Z5/tLxouJJSz1BPFusCYEME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658059012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GA0Dsq/Htn/89tvd5kZasS+tVCtjIn1iJFkxxTJXudc=;
	b=BfyLmktRecyO3NDEpwmF2jw59Ib7H9KlNnfXaFSnGFVwAzpIK0YoGK9IK8Ic8wWL
	SEnKwtJVID7w+DPPCRrr/D/t/InEQe5NRP0by/++N6sxNMLxR2jUaQ6/1gQfAwIU7hS
	8NzidPNCodotEDymkWdxOf3BDlK5Q8NOZLXD1Oqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c04b915-31d023e8-5e40-4d18-bc3e-a3bc742d5abc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55888ec2024511f5ed95b39dd1865b24db4889bb63b02527ed0074ed8776005f
Date: Sun, 17 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658059012
