Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FE538E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646644885;
	h=To:Subject:From:Message-Id:Date;
	bh=M9Bztz2ZjQaFNaKo1QB3S+muDtw5vbN/Oa7MDhve7Ag=;
	b=iKpvtcp92RlfSbdpDYzXZCbZxtSxLTPgSj6XLK9zitGyODFuT5MtmsF2rQmM/0vv
	ZxOc9OpGXlSfTGmZzHpI4kmKBVt1fBey+t2CMGjsdj9ipj0YjY1zLeeCJftv24Ixu3g
	eWWbp5Kemzvo2tFLw4/3xVozFfDkt30nbAO+RNk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646644885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M9Bztz2ZjQaFNaKo1QB3S+muDtw5vbN/Oa7MDhve7Ag=;
	b=cpQadaxIduj099YQGF1OyrNzhCTdpHatN+8PLC4tsUNPr+86Fz3saA5TGHBtaZQQ
	BrlpK/pKvDvKlQgnl7sUB/1OmnwIibsHlOGgm1hEnq/cGMzaOR21HRI5YdOQFnFBIje
	8nC38yFOc2ezFYgKlWXFgYucDGum+XgG0ax3+CWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63aef4fa-08ea12eb-fee5-47ab-8a7f-d0207bacf415-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c34a8df51aad4313aa472ddb11570dc435bd8285e507db84bd12d8f6618461b
Date: Mon, 7 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646644884
