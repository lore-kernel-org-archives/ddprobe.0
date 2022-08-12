Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653222F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660339852;
	h=To:Subject:From:Message-Id:Date;
	bh=gXOYeXfUS3FhHm4eKAuoCkmfl3OUzC3b9j1CiUxIFcI=;
	b=FFx/MsdiIXPQJ0xqtjm2f0OCRmVcAaDHScvljJTRiflKXXIW91HBsA+sG6cFlLCe
	3izBwccrpsjFL4CddfXdoswOr7MkyG0eC0Wdx3yFuC6jLioptNIHi8JJs862bMpXWkU
	gJC+CYJMW8Qww1ROyIZfo7fxuFHhRdgyvk9BaXcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660339852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gXOYeXfUS3FhHm4eKAuoCkmfl3OUzC3b9j1CiUxIFcI=;
	b=Hp3qR3HBVYjvbB9AQQG4Ewf53p/wT6kCuvl8h9jpHYUsX8XH5Di58JRFqz6TB8ZU
	TFi8mp762eqNeJB6MEOOfSpdT5FBQusLbcbtB1/OZ7CsH6z9JP171L3DjhLtliT++7t
	MBJeEx114peEijVal6dhsqqPk2gFx4KgPsyCdCT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293f7953c-6d449c3b-5750-4576-a42a-e9a4603f6418-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73fa41dbce98e5ffbbdb4a07074b41fc07071b826476b42369e7333524615e79
Date: Fri, 12 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660339852
