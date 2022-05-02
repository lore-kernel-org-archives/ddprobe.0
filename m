Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6740A17D3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651491778;
	h=To:Subject:From:Message-Id:Date;
	bh=Xmbed6RHvblqYJ8I4buUpxPg5dfbAMmvIUnW7YCnkh0=;
	b=VQ/gaz+eqPMEvcW81qKwCDV53Wk2Ah4uuf+XOtbd0+5yKG7O7lLAtimXCUbk0yka
	Hrf1UHD3iX6tx2n/EpxxxSrZ1+tZfow7r4jz4iyL8bjN1w13CYvkvUMIrooz4WNkXPG
	oGPtjEzOmrPyxLWofvPFdPXjDuU6hj3PgPAKhB2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651491778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xmbed6RHvblqYJ8I4buUpxPg5dfbAMmvIUnW7YCnkh0=;
	b=Fd7Ab+dTgW1aSJOCUYb8Y+wtcxH01hDKdpnDlcnrJ+rf74QIp1a2r6fWiXLhthNo
	GC9LFU89dThXEIJnvd6/fxCLniys1wtbfrbPiXAQC9b9KdxZss1udJwsD7Hn7TZ1lNP
	R5yTfYtz5Yn66UyJS6tlKHepht2AUTfLIKg0sP6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808494aec6-c1e79383-f371-4d8e-b337-5313a732f403-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 396cf65b985a44542b4c75486eda91f770d27ea2b81df9329a704398fa5d7039
Date: Mon, 2 May 2022 11:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651491778
