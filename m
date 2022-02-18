Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E3A2919
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645177284;
	h=To:Subject:From:Message-Id:Date;
	bh=b8+CKNhmK+Afuyo8sfdpxqJx81qA1Vdvpx/HEaTzIQc=;
	b=Oli59ABZYKP+y+9/r3VxYMxkIC0HPdE3je206G4v5c3WyJrTp5cL3PDmXxCLlxQ+
	Egiqi6k5oM6sS0oH386vZ/ogeuS4yQAPaN9ZL9/pyMYrd6NZKTgII+l3tBcn07edH2a
	wCoLesnDkveTLoDMlNoM/8+ML5MNDvTHg1+hACJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645177284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b8+CKNhmK+Afuyo8sfdpxqJx81qA1Vdvpx/HEaTzIQc=;
	b=iL3o4MRjBMXwPdc0tSwQUP2rlTSDaY9ko0vixhWOM1SY2SXvdih350zUgPjgkxnN
	Khau0uZDlRa8f1fJSvGhvCh89KKEdiyh8/a82eAHGexg8bEvoGVa7dzrabkYsZA0FEC
	qxHP4PMBf2UjjJSgosjPU3RHT/VdZAQsr3IE00HM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c352892-176315d8-02fe-4a4f-bd77-80e67d5839ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b57b2bd6d435d6569c1b510781af6df08ff77f1dbb7d9cdcd3cc8be125c4e5bc
Date: Fri, 18 Feb 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645177284
