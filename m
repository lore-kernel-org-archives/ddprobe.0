Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013231858
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 06:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652078878;
	h=To:Subject:From:Message-Id:Date;
	bh=up9wXXM+7N7i+DzP8U8Pj8UFVjt7cMAvg4cBjH89xnQ=;
	b=A745N4H1KcsFjxSP7QCmTwh9M/dDaAfgIJg7lJ07sWjVfiKpJ1SaLSycbMzcgj5n
	eps6zS1Kp7ithnh4c7HbZhqGc7Si6IS3fPVEuIxIycSt7iXq1NYoFIB5tVS4slf9XBR
	AbfcDy9FtYNkd60KLi1FKaAuUiE7QmCFgeej/ySg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652078878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=up9wXXM+7N7i+DzP8U8Pj8UFVjt7cMAvg4cBjH89xnQ=;
	b=iVLdgkP+rn3DGxprMLSa+/BBRD/4wsLL3gqjF05wZTydt9Ep+G7Ni+gLB7DaoZri
	Y//3iV1irbwGnExE8gu5ojHE7EO7Ghk789Yf+FKR5FZ98OBebVw9Qr9qXwZpo2Nv5oa
	p5o666zneVpietLa/0MUVXP23T7R68GcbqGsx51I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a7931e11-8f2a2cbb-6db1-4b2f-aa28-37c79ea1829a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 763dbd5414b7be58a2c6ccee509abe9598f1863799d729d49a890a627a76a4a4
Date: Mon, 9 May 2022 06:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652078878
