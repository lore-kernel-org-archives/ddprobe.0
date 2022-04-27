Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFB37F5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 11:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651059598;
	h=To:Subject:From:Message-Id:Date;
	bh=OguAcFY28lXr2EpGShig9/5aALWMAyVMVrYF6V995l4=;
	b=Omkz+IKybNt3zHCuJl4Z0mEr31aHuPT/qufxZKjp9+IreWzfT00qoikQTiMIIzW1
	vK1ZQkAkamKJL0E9dVxxOMd3dS1o5guOSAlhxYPRVvuLIgwB7QY8/vIsomurHARSMS6
	/b7+qi7f2r+CRAbnXrHqhlc3wAVq2de6Z3dX9IsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651059598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OguAcFY28lXr2EpGShig9/5aALWMAyVMVrYF6V995l4=;
	b=hglKVv7Ib6QkQhVggLtoZjQ/F3AspoupHJMFOBQ/g1PpxZBW2oTSzXdwd8NChY/O
	7S5Z6OdgR8O37xCpcU8rs4OY6GnQPAh260zWRuoTVCg7QzFUNXUzYfq06IoKJUVo2Fa
	xBbC3P+c8T7+iOtmdxt3QyooUFLHZJuiLNJCV1M4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ad223df-668ad9b1-b9ac-4854-845d-9ba0b7e28210-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0dac3dd58125bb8fe40da44a84e19e8c467b75c6af4893c81773ee4340a521f
Date: Wed, 27 Apr 2022 11:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651059598
