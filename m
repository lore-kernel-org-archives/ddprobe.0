Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A9B3D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 21:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655759759;
	h=To:Subject:From:Message-Id:Date;
	bh=NdKB+OIhJwwGt286K18Xropl2I3UDwrVsbZX4ThRns8=;
	b=XcGT/lYfPatCcujKHJz2ecAkiQ5NJFaP9/0YzQnKnee0cekkZheHD4mUkp3P4tCc
	DlZc4ahZJO3NDqJEyTDIaowmcz7WuZEL07Tv6mjaXLJk5VKMt65AvQHoFuj505GUPHB
	WMaTwlZDjJyFt5ggJM13sUnO9lzStiWu+YkdQ3mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655759759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NdKB+OIhJwwGt286K18Xropl2I3UDwrVsbZX4ThRns8=;
	b=XtXJKhTLage6o4/WKg0BZlR0DxfppoIfyOXPTnItSRES+V7MyN+DTM5yoLQjoU1p
	Z4PjsBnVuE3rovcKwCbKCHmHUiiZeHSd7zLixepQTbVR641VF8pv0d9G7r49DieTYY5
	MkdT4H6Ej7YnURvzHnTfbnVQDu/Y5cp1JhOdNVpE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182f8e78b-0bbb20bf-2118-49bb-a35d-95f49ec8012e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8eb42fd0006a502c6ba57b5f494eda6496500ba3b18ae74854973a0ace7e230f
Date: Mon, 20 Jun 2022 21:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655759759
