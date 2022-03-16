Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B712F38C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647435685;
	h=To:Subject:From:Message-Id:Date;
	bh=SLa7YtXuqU33gZ9gUWR8oFajHtmdK9YJeTkYynMPnLo=;
	b=UA3TcRt8oJWY4eXCxWp1EZIr5q9BIXj1tXeaoVqkbFvV1CegITrb6TbZMFpDn3X4
	UK0cVKXzbPMdzf+8LMo710E4RT3go3AOJfcvRYku5dbqREVMaUiXsO1hjeP5FJO1ryy
	JR0k/053L2Jq+1hzomjsrTCfbgOHjayYXxsAoeTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647435685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SLa7YtXuqU33gZ9gUWR8oFajHtmdK9YJeTkYynMPnLo=;
	b=BC/Hrca0KGCiXOPFVu270O5wSUz2TxU8mtDg8C9S5KQpNclIkEYBVk+Kc+wUt6Ji
	Ej25vZHh4XEOsstFZWN3hlkaxF+2DJIsAF3Q2npWD/g90dE1FPsfGqIWEPnXUIoTS/v
	f/ZPcY8SS1U8RcTNF/lCpNPXW2N/VmPZSVvAeLoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92d19b8c-2ab2d9e7-ec65-4022-81e9-477c7a932b3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50ec1dd507adaf05db162a544ad5716be6298d88e8b9a89b44cbf00491a09bc0
Date: Wed, 16 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647435684
