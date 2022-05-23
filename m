Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8538C369
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 07:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653291899;
	h=To:Subject:From:Message-Id:Date;
	bh=D8/qc5wvNlaiqxkLUiu5rcfx9/FwvO69NIAdEKkzB3U=;
	b=PtNiMOnC7MEQqLSat5lRmUnl+Na7PbZO98c9uLBxIBh0HtPxvBRBzbTycYU7owm9
	i7wE/vicPFXhjzVQl8cYxnKaS0T89v+VLzUqYovPg2H7nnAVp+WpoIfChN175gLeXrb
	NgZTiTZmQf4lZHUomCepWpUMLh+5yC1Isjq453kY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653291899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D8/qc5wvNlaiqxkLUiu5rcfx9/FwvO69NIAdEKkzB3U=;
	b=FTm0KPQfGW6uOAvSdz5uW2NZT+CWaTCVCjKbE0FKKeDht/ZU6PBf+zmiT0sPifAq
	AGS035nrde7X/SdyTi2KwlZh3j3AON1jGPvPOF1IlZ2stt5+bOcWP5jJaUdR2sQUd7p
	yPqFgJeOrB5sbazx/2eRPXRDmAQzSsnemf9fmAjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180efe0597f-6777424e-860e-434d-be09-821e5dee6927-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ce5e9ec808bd1137eddc50f3f96ad1b4d0280c30b8098c76f948f10b60c56e2
Date: Mon, 23 May 2022 07:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653291899
