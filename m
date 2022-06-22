Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB751843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 15:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655911679;
	h=To:Subject:From:Message-Id:Date;
	bh=kOoT6WfFcW5VXjyo2i1M7XAcnCWyGATHSONI/yNnsB4=;
	b=YBjeSGMK8mehbSzv5xOSC1lOR/CGUBery7mmDpzRuKlAkX8Inlv7w+YdYKiUr+aK
	lxYY2mZ2UqKXZTxYtCoLLgOkiWrCNWfZXOXOWGxLBkTCXYE/VV7Q+harzgnwRtd4thS
	iZ14cXFAW0rD99d7VTOa2gU/PgMklv1K309cB+9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655911679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kOoT6WfFcW5VXjyo2i1M7XAcnCWyGATHSONI/yNnsB4=;
	b=Sf/oiz7YX8C9leSWm+/MKjHxVCuTQjMpimfyIK86ioZXcv93rhe05M3ELVXQYu+i
	9uwwT5uFkg2RQCHNDm5/IzdwYrKr9EZazJ2ed3AuGZ8WaFp3JK3ogZLVAy2Q+JHcyPm
	/PnwXn2bKq74nbH8wsYNRKHVBKkRiKoEUB0La30w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c07050f-8db102e3-192d-495f-85a3-806a7a4f9b17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd72b8a5259518872e05911bcb773f84d48560b02118eecd3df3161b3fae7448
Date: Wed, 22 Jun 2022 15:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655911679
