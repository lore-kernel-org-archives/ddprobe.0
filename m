Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DA17A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647374484;
	h=To:Subject:From:Message-Id:Date;
	bh=mZu9ApPZS4zNJSuOo2uGIZXoj+17bEPt93Wgdb3Gvgo=;
	b=DLPf5MVpzxv56lGeTGTFVQ/bNNk4qlzhWigu9MfoFtOkOwuQPIcOxRMNEFnA6UvD
	8NMrPeGjRFzfWekXw1OHwleybwiPvnX+bZpicI0ZhXMnJAUYhr79dbBH03ghcrd14uL
	NC+RZQH7sHz4+Lgk+OdPCEUcPJPTM7f6j3J28GXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647374484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mZu9ApPZS4zNJSuOo2uGIZXoj+17bEPt93Wgdb3Gvgo=;
	b=fuDkjJnYbdxkK3pPI8lUQ9oLj3WaoF/K/yG2Z/ULzJs+GN+hH6lazrGbykaFDDWk
	xK5nbXCnrI+xVAUe39gVIlc8ez2MmOoWOFRrxeH0NaMCvOxy7E9pr67+JKXV1AhtohK
	nH6Ivn3wrYOJggT7m+P28KMW+K2owC3gprmeObsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f2bc52c-9718948e-626c-46b9-8656-525fbcdc5e9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b64b5e55a9a9455cda17014e806928b2daa6f0b0561f7fbf3ad934833f9be9f4
Date: Tue, 15 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647374484
