Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D65910E6
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 02:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651978258;
	h=To:Subject:From:Message-Id:Date;
	bh=h1hdkYehv1UWMG+y95VL9Q4QXnilZNrRD8LgzoVO4Fs=;
	b=HE2Qt/MSjgp/APzS7TUAb/xxB7eu34GyilJuGsXRRdb2x5NrVvDb21lI4bLxednh
	TagnHt4uu3DxuzySW0yJAl+/G7HwCBR55drK7IDCXJc0pt1Aa8JNAgQrSC+zYxfMrA4
	qK+zOmHZceaeoCZHa+3JPxjlUeyOVWFHlwPDIVW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651978258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h1hdkYehv1UWMG+y95VL9Q4QXnilZNrRD8LgzoVO4Fs=;
	b=KfajpoZl9WEmIa01Ocn3TAH2jbAod08/v5ZsjkAEWCkvGE6/Ms+pAg6LNA9QTqLW
	5soAaI6gecX1eUYDBhangaUXodrdyBAZ8p3pxYJXorhQdMy7ShCgiQsAczApbJVH57d
	Ot+nVo4NdJdQ0mUL3Hb/6pXDKsnU31WlkkOIHFmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a193c73d-3d232e8c-c7b7-487a-b0dd-6a641c185218-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a53810d2eb6b27514b7235b27b37234a58c18528c51f0f2a7f036fdaf6358a3b
Date: Sun, 8 May 2022 02:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651978258
