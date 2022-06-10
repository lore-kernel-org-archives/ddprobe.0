Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090437A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 01:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654825079;
	h=To:Subject:From:Message-Id:Date;
	bh=oKb6TWru44ynKhwQNXe5/tnIRt+YnYr02EOYOCcWmjE=;
	b=F1hVNx36JtIgER7Zr7X2dGWC0YT6ou2tCq0Zx9hd3kHUn+28AdL3D4iE4T2PGUe+
	ZW0cbEyNcw/lLa3/5plOA7ISo+inGa5ThjVPQgYOd2Gzhpb0vIofGGdPHoVRhUMznZW
	tRTp/tcLO/Qfmk2qpbgDiJlxg2CN8DdEsOYYne/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654825079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oKb6TWru44ynKhwQNXe5/tnIRt+YnYr02EOYOCcWmjE=;
	b=X1LW2Xl1pxPkPtLcyn6zfEkARckzh9/dYlXW0qbD7sU+DOmQeqUMfGoi9AEYobHk
	QQ/+ZNxyJjGQxKSS6QMPTMijn+0Aj6uBSmmCWTcOi54nszHj9XJ73VglDJaTvt01UIb
	Ad/m4tILjf6ac9L+lWfqUgezNn4vYqD4cFAgeYaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b42d1fd-d99acc8b-bd74-46c7-9687-d47aded98ad3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dc0add6551452cae1a774dc4391d18c32b2e4c91bfe95cd284ed4677e212414
Date: Fri, 10 Jun 2022 01:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654825079
