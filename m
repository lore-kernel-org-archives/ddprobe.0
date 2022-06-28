Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36C233D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656425812;
	h=To:Subject:From:Message-Id:Date;
	bh=Aa3k6xO/bRv7SGyzgpgog4iGWRheTDxElc02rjpqJLg=;
	b=kF0W61gYO4aO7/5hH/FHAM2ym4WxWZY+lh7or4hHPMzOSqTCUPnrjJ5vqiJ9Wtt9
	tQedjs5hwT9Eey/pSF2t65SFXo9ov4AqSoZyX+kTPIG5+QnZJlY36vdYpj+CGy1wF/n
	MoRwfGdoaoddXjM/Xr86MfdGZ71sDI2RZQw7wMdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656425812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Aa3k6xO/bRv7SGyzgpgog4iGWRheTDxElc02rjpqJLg=;
	b=YKbRtL7EO4zwpGg4I5OozoVFCcNtCbSUf5kJwVYEchvV7hn5ValjSFpyVayuN2D6
	upw8Q3bMDUJhXa9WHJHxa8HOrIsLvCeNNdssQPN+HuzDj9xf7/B7GwKWEAVJ0wRZUxb
	9IwUZ3CyPldcNrDSfsItHvssrU8RDkhvUUbrexUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aaac1147-434330ff-4a74-47bc-8c9e-ce6baeaf6d9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c40ae2b28e2c42e04e978b2d07d6250c2269b9fc3b3f338984f90f8f160a738
Date: Tue, 28 Jun 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656425812
