Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B3A7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659500453;
	h=To:Subject:From:Message-Id:Date;
	bh=XeEFWPThBE9plh8bXjbCH7az1JhiYohOcRfJEQySG5Q=;
	b=KQAPPQUe3pCvn6gaWsdMTlIJpe9x6h5/VarOFTHGJ53QQY4Jjy9BgdVg+WI6bA9Z
	YP4d2h3Cw22W33cgi+HQ1DYzZWCZSWZu/BgA2CmL1nkbhWqs5SW6sazCp3zq7b7kqpM
	2t5h6BznZSp2xs5xWKavLT0WuimFruky8kCXG+BI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659500453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XeEFWPThBE9plh8bXjbCH7az1JhiYohOcRfJEQySG5Q=;
	b=jUDZFrd5PB+zN71ELAIG9kV7pvV8lKtRv7D1jRXSfi0THmb1ujTJQ0JrmnPD8d9T
	rzgvikXE8WGxeby4y0X6YTxNh9JP/rHir++RxTla40GSm1EXncdct5SnBKIYPCFsaI0
	ShpjsRUT9qmD7QMcTlGgrSnTgPdTPPpdxugLCuTk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261ef5abb-da625003-09b3-44eb-bcc2-547b8a1246a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93dc6ac9a815bda6c6338027c93e97da5f0b4a4da720418bf87464a52a3d2641
Date: Wed, 3 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659500452
