Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495AA5391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660660852;
	h=To:Subject:From:Message-Id:Date;
	bh=rL6qBU3sytc0LGTbcSeEOS+0LZFnPv7ZJUaKMah/E3U=;
	b=jN2CBrzkuyCDTi51XDOlsV7ykjpLbj+gYmokot8aK/vBtxVcmjgfzHA+mIc1gAwI
	tyaKc+3UejdNT2he3fIXamAdtTBXmskluYg8oj0+TnMdwJ6uHETAQQd9I/RQaoKZSXO
	V0TqS4MUc2yfhrYMEmZrL34ergHMHpjZddXgxiqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660660852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rL6qBU3sytc0LGTbcSeEOS+0LZFnPv7ZJUaKMah/E3U=;
	b=LJaltwWGYVNeVjbNltYVqyIsCaGc+km0qPqHIgsYPJQ/QhcR3nlYP3rqtZdLujAs
	mMpavhmRxozIRNbeYL1EDWKiKkww5r3z8UDTky6SivjNgFbVV0FIgGMLVEL4Xr5dHJP
	mwLfvX/oK4w/ernpiF0OaWLSIrNIextiB+B64tFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a719a75e-4583226b-7fa3-4c93-b4f6-7345dd2a8006-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acdd63838e87d3599f685be22eda695644bc83ff2f426f6e237c08cff602d5d4
Date: Tue, 16 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660660852
