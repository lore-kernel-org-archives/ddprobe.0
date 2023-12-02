Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E577D310
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMvRIs5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F239C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701529096;
	bh=9Pk837/GMRNRx+575XdLwkZSXx9UKLzF4S/31p0pz3I=;
	h=To:Subject:From:Date:From;
	b=WMvRIs5NXuVw3X7O5kEGJPgv9lgAX6xBTGgDdkiKaI1jWZlVKGHra4zXjPu0nXKYJ
	 qYSoFcTmN6bXXkfH/NhQ2B90J4KRXYb9xhZzicH3wmqOc9y8jEDtmWSnlfeTpB1HqJ
	 Llz2Y5cSCDHPmVfp8QNThFuk0sHVLDd3vC+Uow4ROIXf7VJ08lQ8KuklMESAvwpeNJ
	 shw0eTIe1FzRvze78Js6ITvdLB07klWSlwktm5NxoabVcV3+Nu19wX8BkRH+Bphiml
	 UGIm7C5JajEdWrTebG5Y4e8b1/AqUrPRmzdKL9Up2DEYYbTXg/PVjd+UbPk9rFo6zI
	 ObQCjan/bgtUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618D4C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170152909637.11067.7494092353589607058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdad2f3276ad76ec39826fadf6309b918d5507ef003810c5cf30720975b54d3
Date: Sat, 02 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701529096
