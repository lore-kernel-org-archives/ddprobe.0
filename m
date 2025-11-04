Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590F91DE4DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762222794; cv=none; b=Q1aT1rWUvD41R1ciDJP75M2mlkm76ZAVGrev+uWJFKYy0fyPonKQQ7SnE1mwMyahu+mPNefLuZeaRfPPeLmhEBmHGXYQpan1lk9sh1our/LoFl4H0kjxP8LXmFpeluStJlC+BHk5pyzYv1QgVefOQLutYy28x/12UBM3KcJdjVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762222794; c=relaxed/simple;
	bh=9Mq49lnOX5KNIkISPZuV/LYFi08TWs5qJ+5YzaqWARU=;
	h=To:Subject:From:Message-Id:Date; b=gI67+7Spp25QjWdjeiJQ9n3yNdxFrnYM/T9wFLS7/f5i8BHzvFityLH/dOJBH94wWQ3+m2C0rGl3AzsnK/kFCLtN+bsLzso4j1bE1pLOomKxIaOKTo8Mi8s0vLKYTcec7ILHseSbE5SYakgHkp3Uw7AMnOCNiIrb0jDAfcHnzSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxJ3tNs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxJ3tNs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79E6C113D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762222793;
	bh=9Mq49lnOX5KNIkISPZuV/LYFi08TWs5qJ+5YzaqWARU=;
	h=To:Subject:From:Date:From;
	b=ZxJ3tNs6hDhHnynx5CcYFDF10lHm2lYp5eBbH+05CwM2Qr3MDBpBPKpl2nfEP/Gij
	 XZ7bzhav5YK6PDAILa4/rHsClYoufONeZBXmaGvgUtZM7qz1x3cXQNUvhB6S3VioRb
	 C4ceUSstU/QeUDAoMUSvJ9g2NmSP8Jf0skR/3ECMQFzYsAI911bTUMqdh0a9jvUf+l
	 Ys9jpfhPqmPSkXHwaqAYT6kjXOHJfAWV/3rcxuSoARqcOOy2Mx8xGoOs5tSHaE+pv8
	 I72yTVcKV4fE+cHzPgDD/+MOV8vaf+QexOAD3mI1axybJTpG2Zy2BQlVO4LQKTON+k
	 II/TZzNUK+BAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D03CCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222279366.18176.15001258125989475510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918099219dea29ede924676aea34f18884d26bc6b99d5456182b4dd78d980751
Date: Tue, 04 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762222793
