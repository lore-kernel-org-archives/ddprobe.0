Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57582F21
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 11:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652356799;
	h=To:Subject:From:Message-Id:Date;
	bh=w2V4n1Zb0J87hPxNma4GZCEzshmneLckRahE389vfyQ=;
	b=gX2ICcsLRJXvToYrV4PR+wP/Hkn8if7JxO61GUZwj082vmRK0SA9kpW3iTOJ26bl
	K8/Vshhzm+HPNFru91aA5RfTcaY2bEoCwtx3bmbbVov3KdmwnBE/uBC5kjDFTkuwOiB
	GFywp8GiUDwcCpN8Yr1kjIrh/JlsbCl+f6ooz4tA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652356799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w2V4n1Zb0J87hPxNma4GZCEzshmneLckRahE389vfyQ=;
	b=Fr+KDPyUe/V4SjhmKilRk13Ihw8k5hvOulM/n2w9UQSv5CzSSVG/jw8AmDpS5CK/
	Q3qyi1Rgy/vizZnH2QfsILJO1o5o2r0xpLtWtU+J8XJuW4/rJmjiRQccX3bjicB0K1X
	S3l2poyrn5pOfbVMlCHmadUIZ3vFCwXRYJXogTR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b823db13-0567a4a3-78cf-43d8-92f4-538a583db27b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66a7d24c9ba8e83fe7628b2112b71bd6bfe09a4baa3a97078205dd1e5aa47041
Date: Thu, 12 May 2022 11:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652356799
