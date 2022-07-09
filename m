Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F2D7A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657377412;
	h=To:Subject:From:Message-Id:Date;
	bh=cwha5m57vLTpbLF8gyVTUoCtYoN74dIVzyWHFYXUcc0=;
	b=KXLA2R2wcddQDZVIBjH+/jWjj711oSWqaONfTr3NsSKG/MjHgwrb8mOEtAZeC8dW
	REOjs9OgFA/MdAKDv0tVKGjP75ITKd4K1xwTtiVLmDeLOUvH61MA1VIe2qQIswW/uFq
	frksXROL0wCqKiXwL25rKM1fnxVbYZduQJJcF1Tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657377412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cwha5m57vLTpbLF8gyVTUoCtYoN74dIVzyWHFYXUcc0=;
	b=LnQBr5+IP48yBwoPIDeEOC00VNpAA6XM92L3Y/gT9HMvZpJNNWGbXh/vh4bttzV8
	ubP/2zhNIFyV8Bajljpbnu6U++GLTb/6vwVOk178XjEQrygW3yy/haPJuBjWL69ZARE
	sB3l8CVZ/AuCvufOvFQPDQYICs/yPSYQNti5EWQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e36454e5-04d85059-b5f9-46ed-9b77-4d4483b4c7c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb4b1a216fcc5d0037f7ff080e3daaac54d9ce5aa1fd542d2917f711f9b38027
Date: Sat, 9 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657377412
