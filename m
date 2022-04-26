Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78A033DE
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 00:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650931258;
	h=To:Subject:From:Message-Id:Date;
	bh=mGws3G2yh7hy3zu5xnijmaC0U8HrqaFIhhFbV5EigZo=;
	b=TE0Qtcba2Req9HF3JbYCR9TbYcWDXRtwKuzBpQrfzcUm0TJIdUfclhvIPepGCFBZ
	+KXbdNsZ71ZXv4dt3Omjve+kVQWgjlU467y7HXqDQmGRumZ/PedIgD97NiVLq/FFchd
	5gtn5rgen0XLY2AlSvPSwjOiQ+BQIuY6TT/qd178=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650931258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mGws3G2yh7hy3zu5xnijmaC0U8HrqaFIhhFbV5EigZo=;
	b=VmyWcuZ8EebquxO3IStr+K9/UEze6ipjgvXqPr8YIWaqosKKRqNlhLWi8WPniAgC
	dz3FWeBYdT3icaUuCnkUEGTsffZ9ZmrjipnQXQPVbwv8bOkzn9TllXIoswGXol2GdKT
	exqYTawHp9Po6kNh4/iFHQ/6xc5/ncU4UQ9HprOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180632bd3a8-2c2a92c3-40f7-4bdf-9ab4-439235e5e6a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02d911bb9c8ac79de5003fbda5a0c37bb9fb5c57dcfe94fe4862c20eba195b71
Date: Tue, 26 Apr 2022 00:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650931258
