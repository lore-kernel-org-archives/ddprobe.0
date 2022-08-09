Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5628E443D
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660069252;
	h=To:Subject:From:Message-Id:Date;
	bh=x0NVrffWmHTjTnP9C9fwkMHlUDV5YpYApCrbnk7a2EQ=;
	b=VRqiOE+NP8sWX14N/G2waOSkRWtRsRL3Na4r5pVPwwIqq3hZd2pLx5qpfssiZVZJ
	OVgoOMyG87WClmdWDyWXi0MTtNL0RPlvrXBaaEAAoSWaNrqC4EelZTHM8NCMj0plMyh
	U3fXeiMQdILyrap3mNSRjtI36JIWBElXcRY1eVQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660069252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x0NVrffWmHTjTnP9C9fwkMHlUDV5YpYApCrbnk7a2EQ=;
	b=Xlt7p7sH3yneHBjPmfAesj5Axjf068mdduijKYCOHmbgJ3JH1mm/j7JniFvfPvq/
	D+Ud/E7UNqyQyBLWfJDlCSKlTf5rv8UHvuHAwW7vK5ChFPbpL6JOBZCu9P+bKW99kA1
	9vb0Sf5HX7aIQEcsa33z92GC8JwGlSaOHz473k84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283d68ded-76fcb1d1-1a16-41b0-8996-00f7237bf2d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99c076a049e8dedfdbd323a309e3338f1d8506e85b3e9e1ae8d2d9666aa3a33c
Date: Tue, 9 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660069252
