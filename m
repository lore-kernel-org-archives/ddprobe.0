Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87CA7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 15:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648998238;
	h=To:Subject:From:Message-Id:Date;
	bh=bdzSDhsSgHFrE5yHtBRWFqUKqcTEwXXDmw+YPmBjlM8=;
	b=XA9dG5zdHyQNq+CiqaqYdAD7NYhSG1zb2xtICR7Iy5f3GePQQ/H/Bh6TnYamaWJL
	sOM7xWRgic46eJ3OUZkFnF0xBYCwI+xJeFLBD7Q9S7EaWC29mF4yzGZbNNUtkrBttmR
	1/sIx970Iam4MrIDLnUhYgApxgAmoUE3CtkP8ug4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648998238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bdzSDhsSgHFrE5yHtBRWFqUKqcTEwXXDmw+YPmBjlM8=;
	b=ExCLUTP0edNfmXsjJm5b9npXl46AVWTcwMhghrZ+Hp1gXjSzPlN8kVgI3kNkNRiX
	JfjR9kDt/q2CUOH9d9fKAapUNVbUP81sr1v2+I7hPH/pbkSyejuBUFv1dI2t9YDCDkw
	1mPf6MwF8IlsZVn78ZPa5TXkhybC1T0lsiiz+cF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feff4487a-48c4bb82-34ce-4e3f-89b4-0570b8b2bc25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a636dcf95af4de4926a1d08bb5a0299efdd64fe143c15375a1b9d161c8326c3d
Date: Sun, 3 Apr 2022 15:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648998238
