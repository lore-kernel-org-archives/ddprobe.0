Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0792A393
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657989412;
	h=To:Subject:From:Message-Id:Date;
	bh=nq+NcKJdOHBIsVRlkkdaNj4HcEf+YjHKpphZ6a62YfA=;
	b=cS0z6AX8U63KaHvYowMDtrhnckKLenx/bHLMLnbjpODrCfiiwXwBO0tkbWt705ij
	ZP1YADA6r4773k7Hww3fPvmgPcK2v0S8Nx9/GzxhXM7tl56G8OjQMSx30+RNQqgxxMf
	Ek2558ZLQRazGft5O1NY2mKIFECqUlyiGufb9I/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657989412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nq+NcKJdOHBIsVRlkkdaNj4HcEf+YjHKpphZ6a62YfA=;
	b=SgtYm3XkMnT4H/hlcRTEbT+Y/WHhCBvtb+UCvYLnflHaf1VKB+SIG4mSX3Kyd1AU
	rGj9E6SNAAriCTxzxZsn+w/ozN+H7h2vjaWNzSeRLV4b2QhSB0dgBLmRTUnHo3v33ag
	5AUnHmGGYNthrwhSfN/6cgldBAPw7ULN7WNorIGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207deb5de-27c97e67-0a4d-4388-9995-770d6715baba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 671407e4e11ef8e169a0564bb042cf4c10a56de26375ad30fb872e92b5d6aa4f
Date: Sat, 16 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657989412
