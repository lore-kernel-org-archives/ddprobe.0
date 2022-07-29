Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE974696
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659103252;
	h=To:Subject:From:Message-Id:Date;
	bh=jC7KzgOdCmG12w5BDxJqKYf0iFFedhPrdZH9CcOmlbY=;
	b=lbrJbc9S/Y4ZZKHEn0LiFJ3hmOiYeMBJ6nXOUTZuE3YXPzEgk6oOt28i4GOlIo85
	sAgmn1fKO2QfIu09eHldc6+TNWnQ/1ogn8dzkSGf7U6Ut0HSoka7y4mkO3wLkB2MwKs
	LqD8t51guaKhpB/D2EnnnhVLSpt5SfvEjNLyD5CY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659103252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jC7KzgOdCmG12w5BDxJqKYf0iFFedhPrdZH9CcOmlbY=;
	b=XPh0jqRmdS0/P0rhbzOcO0f1XC9hWSuanssk85ZFCPb1kN3BVukCduuPcTOXfpPC
	WILVNtDKzOTmjr34urj7DCydkbaKxp+VzdOk34TrXPaBxznuF1i+QY/y6FGcBD2KUPH
	k1294aDvUjPPhQ0ZpPf7HVLlQxKUiYnteOLI8lXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a42904e-95781d29-ebeb-4d30-aa09-4ae79774edf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 779a94b75e72a70a9ed7654fa7d5e0169d4a755e47febe9a2a2b8f7c5074d849
Date: Fri, 29 Jul 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659103252
