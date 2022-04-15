Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E327817E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 06:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650005518;
	h=To:Subject:From:Message-Id:Date;
	bh=YgqQlnPPvy9SmW/+neJ2DckoM62EH4MS+VBPcqNZORw=;
	b=GYFb8z3DsMCR2GBt0TnXLm3g7bmth0c7RgrhQIpdE6XZv3Mxsc23IeTnHUH3IEPK
	Ta+g7KWOUfFfmQ6fMpwTCUPJ6o6eDfnaBtGnfQpANjAjdUqzhw1UCqa1k0yIcD5wBYs
	IF6mgTO98w5oC8PaHf4eLq1YG8IZlhtpQSEfpxmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650005518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YgqQlnPPvy9SmW/+neJ2DckoM62EH4MS+VBPcqNZORw=;
	b=P9UbQmT8PRtqVYtlvfxK0TCALq3tcGCh/4Nka6KqqxcPifPgHTkSeuiHajucAWzY
	qVWuI13PSsMf/np92xtq1XNRINr6l/q/YwHknvFuC/Ne2hd/TQb5blpZ/A7y0wufwAp
	xZPWjyipOapzcUdffKT7NsOB3UKUz69A9egayibw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802bfe27d4-215de481-0df6-4817-ba37-eea3b3867b50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 358041bb00b0675ac37da6fe711bbe3491390add903913bf1139d5838ffe1d77
Date: Fri, 15 Apr 2022 06:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650005518
