Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61152F4B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 22:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650234178;
	h=To:Subject:From:Message-Id:Date;
	bh=794YufS+Nm+bZyESuCBfHcVG9Nr0y8AdBONFQDNIJ5g=;
	b=CPt9tySuQzts84l31pwO2c9v2pv3DCBRZRU0w+PUfluTk38v9b+fFjuFaX7vq7yj
	5H9+fM2zaEm1FKWak720aYnCMKDRkVr7dRrQwIFLuhaOZQx8OAsyvIIwVXGxTPCaup1
	oY2RNgBF6+RXFIbkXueXc1mbVFWJLhidjoiIjAYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650234178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=794YufS+Nm+bZyESuCBfHcVG9Nr0y8AdBONFQDNIJ5g=;
	b=Ex50Plozwnm09RqwqsLFCSXMmt6vAy/+5RQ33L9C05ZSNnsaD4es2bwfk1Fgf9cA
	IuYxRYQSLA3myKXb1S9gUhMPY/FlADMLWy6zLpBBts7JSK1Rky3wsxU1pwxkWib1e9w
	kCob1ZSWYuiTGydwgnGOR/SfXfsMBfIyYLxOpiRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180399f3af6-a7d48f58-49ad-4b2a-bfcc-81a431f3a826-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81f269f344e90529b12bc361edfb1d5cd7eb8e00836545638c307b908e62725b
Date: Sun, 17 Apr 2022 22:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650234178
