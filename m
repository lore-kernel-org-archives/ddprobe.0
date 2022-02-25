Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA95B7B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645832785;
	h=To:Subject:From:Message-Id:Date;
	bh=l+GvVgZNu2fFNIQIvcRnE6x5liF7depOCpdaWfRqd4M=;
	b=ghQVNFu/g/lxgf9P5+/YmwrUIZ2Engw6aVwpMJYOpk9eFx0iTMcI+d9pk7hv+r5m
	qjBygDF+wUe3zubJsBlNuWEloHPBCAYDIKKm/I/sOI40BB/QjONGm1Gy0K/rYs2WvJm
	A3JnLbwu/d77n/DUuztoJZPrdnjAKRE6bpGlcYR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645832785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l+GvVgZNu2fFNIQIvcRnE6x5liF7depOCpdaWfRqd4M=;
	b=ft0177Jtpc0EGLFhVzPCJ5o/cSiETiKjDosdK6/CHzUm7cSt3vhPe+gzbGYTG31e
	qa3ecF0D8vm1akBipUSdonbx+tsEacSJJ2siunL99v1ETIuwIVTNR89UpMkbrZXLV8B
	fcEfVGkh1yxX1s5c+s8FBRBzAH9M7ck8/zkwBOgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33474bf3-80111076-c742-47c4-b140-41c056dac340-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b93a134677dac8b19cc8544e12e8b77170c8b3c0482a1beac92124c9c0ac356
Date: Fri, 25 Feb 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645832784
