Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C743A33C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656086212;
	h=To:Subject:From:Message-Id:Date;
	bh=/INpQPh5V8M2vhskQEoGCvpWWmZsOinwg5KH4tsZatc=;
	b=hjBjuYfEx+hw/nCNrvyA57qngaZoCb4SsxKssEbaR+rYfaqbCWknWhyYfhhxATNQ
	/xhh7eg3JG3b5GAlGBqD0IC2EkKktmXgNWpAyDQViy9b9LXroZbhItMt7F1L+QPKzKv
	KR4GkCN7D2vmVF0+tRrdSz+liUsP+J+iZXrRxnDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656086212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/INpQPh5V8M2vhskQEoGCvpWWmZsOinwg5KH4tsZatc=;
	b=SfaNmlQrZsNZ17I38bgtYUZd03OlozT9Sv7Rjy97kHLtOfSJsIxntJTnbfQBtK5y
	h0jLnm09lLz+IMWkL0pjNYJfRgOwfyMNIrruE04BzefHmn9H7mBDKUm5Nxbqs9+tbJP
	fKVIg6WQrewkhUkQR0EojsaXDkGcXveRW+CaYack=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181966e2ea2-4df1473d-1324-4c53-8159-172522417ac8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8247f7fa2772f8a1bf82e6d8d135eece286545aa46b59cc930af97534101fb90
Date: Fri, 24 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656086212
