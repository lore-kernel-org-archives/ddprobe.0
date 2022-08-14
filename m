Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A6EEDA
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660482052;
	h=To:Subject:From:Message-Id:Date;
	bh=5iB5XgBEkYMJgKPqPadGzC5lvggIlLK8xG475WflKfk=;
	b=JVr+hP0vBoP48wa2zlnLXMEsP9gkGcckQiggK1hYhmyxDSy10zQ4nO9TXWk6eptn
	ZDgfGMvUzstqN0JCrn1FGyBzmWZpPblN5xr9MDmP/upItdMmF2IBmlwjaLMlXO9lJFS
	+S+iK8Ij9lEw4YPVM+Y9BtvdKWX5kuguFnCgnLCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660482052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5iB5XgBEkYMJgKPqPadGzC5lvggIlLK8xG475WflKfk=;
	b=bAljz3TDtqI7rMp3p29YJEECmd+abeOnsDcME7+5Wuvb7/CwhG+HTLLSSnFo84DU
	+qqJu9INEgfhBifkZRFompHTATGuXD0/UJPlSzmcuS1Ksw0mqc9eaavWDF2ksCdOMVV
	TO6U+byjsHQZZUW2colIzqVeek48141BWn70AAok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c7161ea-28faf4e7-4a29-4932-a41e-a626b8e49530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e79452557f94c4a1642850845f253925522b60fe436721f381255b7b8059dd8
Date: Sun, 14 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660482052
