Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643165395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647732984;
	h=To:Subject:From:Message-Id:Date;
	bh=wttsW2SDlsoGSwGciQqoU6j6fhulBIAcoqRy+8L4yQg=;
	b=bq7ZZ23LIvBC/FzorGpgKHpAqcVlI+BvlIZSpiGKuDxXRI+4ozrIHsKKXkwigMdG
	ARsIDiU2vYvYd3WaSJ6ByleDxDVmPg8dyd/gZ3jQQnx+kHsIfQ4Z1B/tLoJgCs1cNgB
	Nf8jaTmtfO+IDwkYCBhXs3meP3w04DG0uDevP35A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647732984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wttsW2SDlsoGSwGciQqoU6j6fhulBIAcoqRy+8L4yQg=;
	b=N78l3RZRfT+oHSjvLEkPuZQL8GdDqV8vUFWvB59GJ+x4gCoJvBjfFQcGgQ9Kdr05
	20782njrHb2RUuBWw7iOMBQNy4pDN085CLZjO+Wan5YcTa3Vp+7mp3yA9FW9PhjSawR
	ipLEQLC2/oyeXRqBUTBwopOiYVg1pl3IEdGMCXwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa48a0bb9-dd1e6584-8790-4327-adbc-3fa63282af5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83fed8557db0e733b5de550600b394f5226dd7f3bb6b1ae6ac69e4eba9ee70a8
Date: Sat, 19 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647732984
