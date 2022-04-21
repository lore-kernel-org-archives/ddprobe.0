Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44DC46B5
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 10:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650535438;
	h=To:Subject:From:Message-Id:Date;
	bh=7zSRh36bdABeVFftQIFBKDrE6rX+hFdcCykxQMoWjtY=;
	b=FGjbRsOkZOZUygVo+NXLcwVwJcEsINf7UdkOG81O+XlI0uuFxqR4Bj1JAxzEGP3d
	IU1UJ6PIMtkyuTsOeEHt35aw9W2tXfhwmVKZXqH37jVzt9YW4BzKeOU+nanMshIFU+j
	bMhmNw3HCjG/Jw26yMNFu42pF9fNt3DZx8y/z6X4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650535438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7zSRh36bdABeVFftQIFBKDrE6rX+hFdcCykxQMoWjtY=;
	b=JNYNZZY8rzpkg2/Af0x1gi5l9ilFw0CFmO1Ei0NjwTVKkpDqT2XFFLaKe6kVqVPM
	/uQpqXP6LcDaOIvLqi6RnxebUJ4jTTS0JFqOmOcVcqfzbQF1FqadNNWok0v1sfylJbn
	mNovcEaDIcQ4doIzjkA6Oj61GZFp3LfkplDx7RPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b9417c1-cebd965e-b59e-44d5-b81c-d3d13723f159-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 611e5909a0b8d5d5164ca045e6867596604844b657a455e2e0afd58c9784130e
Date: Thu, 21 Apr 2022 10:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650535438
