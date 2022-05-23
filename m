Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595DA2F27
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 18:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653328919;
	h=To:Subject:From:Message-Id:Date;
	bh=I2a37LnenI2j5yJCmG9QyeH2N2+NaoZa1uogkNop4sY=;
	b=fKBON6trTa7Pp/UUeLmCuHeD86v6zZB3iEo9lwWOU36joOVwv6w1N6DuHRVH75Tj
	1Q6Jw0hFnlQbWzmBQ3nV63QeUmAavlQZ8ss5zIV+WNrwcu+KP7Hhm0dWCUBj+a+jeRN
	F56f/fcCKHzy+p3Rpm1VcEzPXqSMIenRxmKmvKlw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653328919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I2a37LnenI2j5yJCmG9QyeH2N2+NaoZa1uogkNop4sY=;
	b=bYA1ZUBevxJpp0W7QzQHH+v6EQDFrTqq+K4M57ovVhz+dBnxMBUo9KLFKu7uD+cs
	IxaWLKUsCguWgoKeYc3dLzbLyqk1D3Bmc5DlJSV4T+VEK1DxCFn6H54pRmjpMN4PzQ0
	k+BcUbuPA5MToJT6El7tUGq3qzc7DrLVX2sYBRVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2153b1f-948a88b2-dbf8-4a1b-9a64-a1f061bf85a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4aaf8bad4fc0c48e51d8c8b88f536c7a3b1d28cf1a7384ca564d785e5b5a84f
Date: Mon, 23 May 2022 18:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653328919
