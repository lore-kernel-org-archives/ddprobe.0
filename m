Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5949A15C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646074584;
	h=To:Subject:From:Message-Id:Date;
	bh=zuQHdmw/Abjq1OhTk5ktily8EVRy8R013zGahpnyWcQ=;
	b=FOdTTjnb4yPMGyKr23vsqPu1yKh5ng84gfxnmeRjZyscbU2XSYtrweMc+mMwGpKP
	KcGUa2CTskj5zj5G8oOBClAVovp8GEA8J5QoDuaOXCcHF9P0zDxIx39EWYPcbHKGgjD
	2AXuECK06yZgQtsK7z4WAjCphfyialKv+uXgCtDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646074584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zuQHdmw/Abjq1OhTk5ktily8EVRy8R013zGahpnyWcQ=;
	b=ZbaXQe9IQ5sQCu8R2SqlE1BcamVsNyjRlWXAx3uqkLBNo7HyFPB4sa5RIcWxB7Xg
	UCCkC/Ws/fFFN5jYV6a8F8LjVtKsqe0xFT8m918cjIHNXAWkris6oOIM92D+rv8qAfL
	Mdt51SOlEcdfp7BBqVVmYCOPrCe1XyaUncat0JsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41b0deae-d650db47-e720-4c6c-9254-464cd977c0ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4376950d867c53e43601b84ef975190b3ad3faf2534dfc6bf3eefba89309a0e0
Date: Mon, 28 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646074584
