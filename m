Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D01A7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645779684;
	h=To:Subject:From:Message-Id:Date;
	bh=8qzSPE/NMwVv2AvTRPylRZ90hPM1f3XWKGo0AJJHbVs=;
	b=Cxj8++DH6vXvgABFrKUgIFOqm7qBBhIwrkd1vbvcsh3Tc8Juu931jbxj2WwEG8U/
	osqXBB6g3QOiL2Av37xzb9+y3PXyBaqczYaOkCizLH5kq5yGitjdd4YR2T0XSINYUF9
	655nftI/Uu/XYF+bfnemsyLl8WlUnoRXCMAcDWiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645779684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8qzSPE/NMwVv2AvTRPylRZ90hPM1f3XWKGo0AJJHbVs=;
	b=R2LBmqpxKkGC40Pt70dNBQOzitrBiX8eXl/haYY61mUTZBT+3LeCR53EcJUrWdka
	J9ww4uW+fQcosxWtv3YoLqN+mK7rGNZUU2CkW/T3TCAYMGaN8JicybNt6d/FxBEYMrU
	jBE5TTiVH6jspOaA2iQ+nOiNjy+K8BIP2mLhQRfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f301d0d92-5559d048-25c3-43ce-9649-8b4bf43d7145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03d8f08e6e0012b767f12cb6e05ec1ff3b188c34bac3e7a99a5e67b4de673ccf
Date: Fri, 25 Feb 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645779684
