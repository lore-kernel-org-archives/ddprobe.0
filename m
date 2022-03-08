Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E382F33
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646710284;
	h=To:Subject:From:Message-Id:Date;
	bh=3TWmNzsuLrivFpgs3gHuizXk/UYrAlsSGpxUSIo0J7Y=;
	b=Xu5u95npZuPXOHxLpbvLSPmWeTpLSG+PwJA0KBJV6hc/sTsGUPdvEn54Yva4e6b7
	qXyqk57pEu2OwqSzhsQjIpcdKeW9rGBcGPZo0ak9fHxABBhHzMeLnAsNbEgDMSa/k+a
	HXnFeQKVMk2t+zmrqXJb/c34iR6w61KiR332+YdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646710284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3TWmNzsuLrivFpgs3gHuizXk/UYrAlsSGpxUSIo0J7Y=;
	b=Zv7LIsEotPnz5bK1/PqZeCw2A3CfOksrscp7bL/okvPrvje1yNHXjRKs4hZhdR79
	sJ/jfPqsPqrpldzgZwTp6Ly1ghngjVm8lff3yzvSkhj52j2aw0mJU3SG6TrzxfpQWdN
	5ERUcVgbQ6nvu8DhcuqoJtxKCDxHOuOaXSs+fqg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6794e1c8-77de9789-dc52-4125-bc30-078a57a22965-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62ddd1a77fcb8cdd07728ed42d33608c6ed5b1b5eeb4a02ca93907488816e89a
Date: Tue, 8 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646710284
