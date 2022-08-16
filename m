Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6D46D19
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660692653;
	h=To:Subject:From:Message-Id:Date;
	bh=E6aWa93FMsthtg5KSEhJHtyRfI1j2Ddkmtz0NddiKjI=;
	b=EmoCj+qFqBKEDIegGcZ2qcWXlWPJ/AP8sAMbFb3UmNrWZVwbCalkeI8dag8/ikJy
	XdDADN5hjJPTJiQeyO3XvHNsgZSilroRnMb9y5u1P1zSjiMASyBLayQUdP7/MFxm1Cv
	9gxwRdW6sh32kycSkcwBOtX0a9JpdlVc4FJwZUJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660692653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6aWa93FMsthtg5KSEhJHtyRfI1j2Ddkmtz0NddiKjI=;
	b=FvxEo27vCtQApJzVm8gfRZ6Qp8Fzxf+QuJsXDz6Tg5m+2UAwEZ25xyOrB5Sk3Bd5
	kviJh5SRvsfUWScK8n6+aHfMBBxO3Hn1ohYkVNdLmieD5GsSHMZibRrbRwoUoB747NE
	WpKm9hPdhNdPf2ezID3VkUYxFM9f+fJqRsO8dLvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a8fee1f9-2a4c79b2-0b84-44f5-a68b-75ac294da3e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65c3f9c091fbdad0094d7d675edde10c381ea79c7b98b1e352b9baca466e1d56
Date: Tue, 16 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660692652
