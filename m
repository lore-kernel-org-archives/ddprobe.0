Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6639E1114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659778252;
	h=To:Subject:From:Message-Id:Date;
	bh=NegyDWHYM27NWKX4/l1nDEHyZ/KEtmJx7ImekvJ4U58=;
	b=X2q6tBn7qj9NHVDvqryGL6roCG/MRbkcP3YMb+AGtvMpi8UaDEBpYYPCX/Fh7Z2Y
	UqwXptOkQnGTKq0eEKHf2ViUwjooEKVgBZkVHFoeSSHw2uXNOjDpCPAktEhBJ53SZL2
	uBizVsZOL3rWLDYgLx7aS/WAVz6aijw5Z6M56EsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659778252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NegyDWHYM27NWKX4/l1nDEHyZ/KEtmJx7ImekvJ4U58=;
	b=i8yUVzFwa82XFuqwTwuqa6VrC6RHW36GEBB1X6QbPzlysHv4SUhOdn2PIs+OKhB7
	F5qx/1xil+GCKvGh8RuGfXFNT5UU6ZV++wyeQgn7gEMtw0Fh0fN3WRdzR5mX+kK1HoP
	dm33K83R95lvRG4rjQ0haGbEEay4ZyKRgqE7E8Tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182727e3f35-f2fad528-26cd-4fa9-b028-f37746016a91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6ea8f6d188b3f9497d4b4b901af8b339dd30b934f4bed9c893f1feaedff9c1e
Date: Sat, 6 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659778252
