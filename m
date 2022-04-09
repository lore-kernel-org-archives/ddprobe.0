Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E982EA52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 21:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649539678;
	h=To:Subject:From:Message-Id:Date;
	bh=DFHOn72dvrQPcqfyNY4QdPxE0j1IYizoZFWSp5yhm64=;
	b=JDUNHLi4xqffOMx7DQ1nw0dTGSHk3NhBGxbCadbd957QHYrBG+VFqpda6ER645Nc
	l+k0+FdJbSR9XHH81zheJjVjgbPwKK1LZvoDbW4C+At1MPXM77E1YR1fpBizxu5GBAq
	A/OKPyeQ8D6k+YruB3FXpgM+GCYLyWUoLPwh7yI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649539678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFHOn72dvrQPcqfyNY4QdPxE0j1IYizoZFWSp5yhm64=;
	b=CCYbrrcHDSO+KMA75CW7bsshvmsZUrYgiqIbVB2qX8HKzq2JXRx17UoGuRPHRCI3
	/UMIzFK5Xg2UxeOPZg1m2iHQCvCiBV8G4chRgs7poNcFFK+LOeLEppgQUC1vmiDir2n
	yRdtIxI0hDI6YYC22edzFHPh/1G78khTegbD6hSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180103a005a-47ea497f-784b-40bc-9d10-76bfb27c9943-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0570a9ddd0815f6873b7bfabadb1256f08a08663f38a950168d4015b4d4a1d4
Date: Sat, 9 Apr 2022 21:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649539678
