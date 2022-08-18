Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615CA4A07
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660857652;
	h=To:Subject:From:Message-Id:Date;
	bh=wG/7IQWMPs5Up2/lnt50bPpLxBFpxhpYIX20ywE+Aeg=;
	b=eDZtlQc/5h0cp+zLhhEhTAhQru3HFs+1BWVFLxLls+y7hxvK2ey7Z6ymWNym72Hp
	/GypHZ27FJduYVS06PS7mrNI8GD9H51LH4FYkIBzG52jAg9DLQ/3u5q2YKCTfY6LfFQ
	C7smmYQecvd5Iv7luJ2P/3GpmS7VPDcKEAYLs/kM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660857652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wG/7IQWMPs5Up2/lnt50bPpLxBFpxhpYIX20ywE+Aeg=;
	b=DkByEGrMQMpJeKzrfAzidNdtOZ8chjRF+PyVbG8XrLW22uWCQMJDMiHP489beXy2
	zMM6T6GebHaDDtMrMFBWukFUjvZt7UgUb3STE1dCiU6Q+uHJMrhMqkVS8LDjVCOnlfJ
	U4uBoGudWTCM21oQtindGft0KD5qIKQOv3GbUdcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2d495a0-72395d57-737e-4c9e-b6de-d83e349fc3a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86d77cfa21c5d467a69eb0c7e0023088bcc89e0d92c4f36795ed357f4561a3ca
Date: Thu, 18 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660857652
