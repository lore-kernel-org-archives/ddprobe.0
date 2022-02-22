Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89035366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645502185;
	h=To:Subject:From:Message-Id:Date;
	bh=bqo8HYsa4OAZc+C4APHe1yvb4abHxQqU0juXSHtbptc=;
	b=Ab5aibeYvw8QO5FEvuVpXV3DlRtB1JPJ8EQvVgFRGFrnHvzRVrFWkZUuAmTEVGhb
	CWOhw/nNGl12rwp0xrxIgSa9OanCRfejY2LDP5YtmmFXsTYLBR/bufIwiITc3DULhJE
	Ut3VehrTpAupddCuiszvIWjerrgn2/MQ0QW+ORP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645502185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bqo8HYsa4OAZc+C4APHe1yvb4abHxQqU0juXSHtbptc=;
	b=MFqFryDA3mcJQ/j5ER67jtV88T8x1N63QW5mhXMpAEOBjNhUd0wne6He2u7xOoXS
	DKbvDo9QyIW4kw4ZRpLjhArT0tyUqRdrk7nUDK2bK3LnzA/fg5AX8YzTA2mZUusLyeo
	wySGI86dgV/btFcrfxk7sHNbQ5XqiUsvnbLcxkZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f92bd4e-eb8230c5-91c5-4276-a7fa-8b623cf0303e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5db0b138e30cb39de5d702dc109a7cd913f85f7f291e6b459c07e6dd7961aee
Date: Tue, 22 Feb 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645502184
