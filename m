Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B57A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659042652;
	h=To:Subject:From:Message-Id:Date;
	bh=Nrm7kVQMfQ2YrJfzHfbM0lrwxjzqAMqJ5CA8RAeU4hc=;
	b=Tic4o7JRFvH9mxILifpF3dvHtx57bYR9Zh3JNad5qzPTKfxpNQ7X/Cqgw6+/zhm6
	TY/qc+k+3ObV4PTt1korM3piB1fKt0PKZLEMy+QTbCSsDgJNVRt6LT8+6saug8o+tCG
	BCrRGEm6uaF3AB95+o/Fd6Yqf/omK1bZrI644uss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659042652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nrm7kVQMfQ2YrJfzHfbM0lrwxjzqAMqJ5CA8RAeU4hc=;
	b=U8eO4XHCmG74jcNDPs3Rgs/1Ysmn4IHka1XUzypouEK06l1OucGAtXdiKY61dofH
	mJlLzzg6TB90q1eN04u/RQ4a42NutodvmSWv8b6BHCyEZXKR7NHQkOcE4cYC86z3mtl
	FJPX5Or93JukdROWCTj9cm8q/YuUWht7prQXPKN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246a5e181-7af45ae3-27d9-4299-8d32-e542c4792e61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bfb18a7d96c98137d25582efa637fecae5a1859ab53271f1b816d15562d40a0
Date: Thu, 28 Jul 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659042652
