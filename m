Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A79E180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647690684;
	h=To:Subject:From:Message-Id:Date;
	bh=9qly9QdVUNwbZjy/JsRTQvEHZdjKL6QEwUFwBshWAis=;
	b=lK2hJUEu6FmZEkKGGOoW/VpzQ1QbYnn/mK0JWdHO02U6I3pFXb/dOadt+pPSL4di
	kNCqAby2OScvLQwBfrT36EmkJZSRFtmL+46F6gWq9CFybEUTzlayr8ZjQBDamDRC2Zm
	vD2MxeXEwx8tTEAGk3kfPT87kQse9kDoI8sJySvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647690684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9qly9QdVUNwbZjy/JsRTQvEHZdjKL6QEwUFwBshWAis=;
	b=A1KWdMPNEHIVbl3DWRrD9s8VeyjluF4XoQpcrFnlaGhTzOiSMBiE935m5fE8Zgf/
	zdi6C0bbsIkbB3nZGQhx+WSQJcM6qmdCPnsY4i4gTOomWFSaQJA2WbyAxOU8vZBeFzU
	ryy41KMhe4aaYJX/jn+rb2SSBWaoo2PKlLgEpfyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa204994e-3e7b3e11-dce2-4397-8260-29d451e17115-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0488480de55e79c16f4275a881654fdaacc02b1b8c9c2e5c6ef451c015131ee7
Date: Sat, 19 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647690684
