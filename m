Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB1E20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647744084;
	h=To:Subject:From:Message-Id:Date;
	bh=CR0q/SRGIUZxUmKJQunLIQCB4kv205wxo6HWjcmK9qs=;
	b=J40ZFhaCIjRM2NPSdY4he72ZQ1fYDX/oZGgHuIdWbxD5rX/6h9XvlpKPeyM1ZL0l
	jp41bUPSj9v/6euYqJbD9N2PFgzUfIc0DC3OPImIXH0oAkxGNxhaZujr4S/DbHEkMzW
	yphGE5VldoQ/Rfbf5aG2jGa163/b7uJqnT3xv1YU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647744084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CR0q/SRGIUZxUmKJQunLIQCB4kv205wxo6HWjcmK9qs=;
	b=HivYCJoJ62a62JgsJvlefiocpBerb6xPY70FHzEcVzdPITRUS6oeRzQwhFZaiaL9
	V7M2TkzJ3KID7vKsoR5sH5y+Vt/roIiur/DiBCABnvi9/uglhblUSx0FIV/2L8Nn4ud
	SXVSsQFN4uEizGMo7zsQRQXhC3tU0dAeoyzsNaIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5336b28-3505021e-7e01-4c8f-852e-c939514842a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68ce398d9e25a9c9ebe6265bc41d9b5c66c7e66da1094676530b6aff3ed92f24
Date: Sun, 20 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647744084
