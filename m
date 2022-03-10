Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944C47A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646879784;
	h=To:Subject:From:Message-Id:Date;
	bh=/5Tyx2IPYHg5j0PcJYs/xdApZVWSgNN/V94EZkHk/Og=;
	b=hRFW2ovyegThGSWi4yEA+HCQgS0jLRkytdS1xODnxtsFHgXclSykpkMxKwgS78MU
	9Zh+FTKyf7TI6VJhYf2v7vUE3oRel+hJKN4SryQ+TlB7WXXD+2gHaDSEJrivpUvRq7E
	o6eBIOGnr5icHENacMq7KDCnG06xjZu5w5CP8sjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646879784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/5Tyx2IPYHg5j0PcJYs/xdApZVWSgNN/V94EZkHk/Og=;
	b=Xw9V0v+0meLJh64YNOO3misNXZ+F1mAuwAGxY5hZ++sEbspysotpCSu/s3ZHE7nR
	CR/2l0w1KJsodqNQ67M1xbjXSOiUkquSii9N/NLMJsaJbykp+jJ7RdX77OPn5l/2+jV
	MfAgFXFgC7+uBJD+Hhf2jNWjOaiu6MLvEC/Azvzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71af3f73-74417566-8f64-46e5-adc7-9230eb7f35f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 062259a14c1e5ac41e09d4e09c199c9e215ab8157b5b4cd4a62965dfcfbc8fa8
Date: Thu, 10 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646879784
