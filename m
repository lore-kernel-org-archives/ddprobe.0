Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8797A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656409612;
	h=To:Subject:From:Message-Id:Date;
	bh=NFlciX2u1us1xhC3wpwo9uOkdDMnjdKVuKtjho8cwAE=;
	b=bnbMVK8ZszN3lIo+NiBSOHOE46Y9Ec2Nd2GsIpVpAaH1G5BvQeq6O+sLWstdAZ2M
	TVW3sc0z8XWBoUHbWEbZ4fDcSmNgb0ux7/ojcIo0JkZOGQQmia/4R+wx7H5S89uCKDs
	sCh1//h3YHsMAvwJUvdVPpR/2BQrFmMDYGXRb2P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656409612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NFlciX2u1us1xhC3wpwo9uOkdDMnjdKVuKtjho8cwAE=;
	b=YFs664w+B8nIawCjG1wf6l2lr7blxov33cLhJn5n6P6sV4kofJCCJ5YZQLgOEzI7
	PIt5j+KYwGBlxOcu4vOb2IxADNl0whSklzcBxQL/F3FbIGiA6X/lfxs/YFxk825U1N/
	AczMmYyjpMXsbq/JzQjBnesOKaoQWwpihVl4AYX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9b4e012-27cb23a0-d37a-4327-8afb-cecacaac3f4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faf5567d7863df42d61f0562b903323a40d9efa1e5a9d4a7d17790330c0e77a3
Date: Tue, 28 Jun 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656409612
