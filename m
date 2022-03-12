Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F77A7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647057685;
	h=To:Subject:From:Message-Id:Date;
	bh=hZRahqo+HxvvfLAMAyBxfnAdhPep8wx/b8hnCKTuzho=;
	b=JARlLLCsl/dtHSoHrog0B4fh3niM/deJasNKLf6QwzYnXNWIb7X3dGXCFoFTJURx
	7VRyPCNaq4wAZlymfmC7EOM2w5IZZojyKAd2XxDv/N8awzD0qSmzeFGhrXDd3VG7W8U
	H/ivQQ1+ZZMuH5bl3ltB5HZ1gDXRkuz1LWvy3xZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647057685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hZRahqo+HxvvfLAMAyBxfnAdhPep8wx/b8hnCKTuzho=;
	b=VSQPj7wabh7PyJ1g//5gN4isAG681C47Q9lYHYRZ6XnbdbF5CM12VuTorQBq37cx
	fmWvCXEpd3w6H3kUnh33q8IMZ0mLIETUm7lk1A56BxPXAn+sDLuC44Xr7T/H9s3ZPql
	QioIgfkli/bIDwew5bcpWs3RgxdQWsYzyfwqPz6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c49c940-17af5a19-8ee4-4495-ac42-f482b59b8106-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48b21dd858850f96bddbfd96e604a7e2597664b59373387a60027e1d6068178b
Date: Sat, 12 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647057684
