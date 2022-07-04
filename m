Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CEE4A18
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656971812;
	h=To:Subject:From:Message-Id:Date;
	bh=9KT/FvjEBhdyPdhI+r+2cdlu4JgALynCVBZEALHSalE=;
	b=kMycGqzsXRoyNOdgHJPeAeNrtrh3MQeZtISCD4+pehRWqrbf9ihe36ngIbNjElBS
	whhCGixz28XoRl7/cNHhzy8zSnkWedzXYP5HUStwJeFxx/dMK8PXZHvCnYdmx4DW44h
	qLnGzfMOTFRXmLOiWpk8RBjbU5i76QyzobwI/5UI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656971812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9KT/FvjEBhdyPdhI+r+2cdlu4JgALynCVBZEALHSalE=;
	b=jKhVLGyX5WHiSZMypNav2OLo3vhUT6K3JmBF8vxE931PzmhoLIPc9avh6tCtMOQr
	DxhkgM6TPdK9lz0u5Oo8d/iFGXx72zT0ygoyPKOzBRR5yYursIZhKvhTMcethtCDLmf
	Y9GYVpa1E5pHOkybSCYzbsUC13HOQ7Rj1rHNUhLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb375da0-e3e5c716-3975-4a01-911a-296024240f14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0257d0ca80c18fa70e82fdd8d17740e1c5157dcc2d9e4c3e52e72fc33f0c94c
Date: Mon, 4 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656971812
