Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F46185D
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 18:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653589739;
	h=To:Subject:From:Message-Id:Date;
	bh=dS6PfSD1fVh90ohyi5DHlHLbAFaMbVVaDKuI9zD65+M=;
	b=NC0z2urwjao5ti4g4ttKnIJcKLyx9bwVFrl6oJab3nczX48zWxR5K6nV94fUmCec
	YcAoWa6FCQpSGY3tiWXeSZwrt8+4e4OypQ2Lx5r7RMmr9fsSgDgV7r/xjyUAny8p9i0
	JcQ78iqwWdkJ3YklRYGmfBPNUWMSCEC2ZnFr0C30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653589739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dS6PfSD1fVh90ohyi5DHlHLbAFaMbVVaDKuI9zD65+M=;
	b=gXXoZqNQhDFyPoDTCqKYW6xR3+BOq3w4E51YD+UKVbTM/RHIL0I1cu1WSf07I0cV
	XjZQL+uKQZkpjhkjZhu7tXmenGINrEgkbwjaFs0bNto9tmeR7durUw/wvRb6jozufPg
	I8YuBCBLcta55a2tP4qQdctr/6YMGYyQEZcotOYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101a10733-f01fbf9a-66aa-4d8c-8333-c9ecc8f7861f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15a00801a1f466d4952c47e458bab6b387bfaf56c925d76f155c4b9a936a842f
Date: Thu, 26 May 2022 18:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653589739
