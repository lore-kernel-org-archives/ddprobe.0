Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1211FA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657990612;
	h=To:Subject:From:Message-Id:Date;
	bh=VnVWhBmkZ9bfwv8QIIX+v8hFBoFa+at6zebLWfpZbBc=;
	b=Vg7eeAal56jqhRud5GqFweYnMv/DBOWZEPC8pVhQ/1g5LZeyywQPlsDi7OMASLsH
	nJhZXsBFr6TMMy9zGqhqAwov6bsZ8oWfBMtRhGgAdy01zsfy3SSObd/UNYygVAm68TH
	eQ2N0HrZBT62LW6iZ258V0UDEEw4km/YEvaX1fOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657990612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VnVWhBmkZ9bfwv8QIIX+v8hFBoFa+at6zebLWfpZbBc=;
	b=lD6AUqJv77bZohUvIEsiafQR9sdWLDd4NV6y42PwKz+XZfcFX2DzHrzPVm+gbDvW
	QiG7bbyO48EOpBh7R5tyYgmZsF6vaoUrBX/5TSpyEUGUUKfhCb6ywtgwlSA4tkfg8yF
	17JlRZE63DY/AYQ07jd8R2FjhoFxna4xeBDfE+4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207f10540-3a8c9dc9-b883-4586-98bc-d7cff845cd91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9b761e61ab89c54066dbfdb99facb59ed6d649a998254ddfa88627a68e18ce2
Date: Sat, 16 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657990612
