Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A059ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648004484;
	h=To:Subject:From:Message-Id:Date;
	bh=u4ycp6A703+izCUGqwgvhtVthC9m3F3hPk7WkFyO0VY=;
	b=IJztVUmT+Y+M6aeIYtUcUMBGdzmAycv//UGOSD0H+nF4UBfDWULuG28iJOtsCzxj
	6IFMds/dj/OHZwvGQFPUaPo3YeJDw41MHbh4gxjWIqFG1AHB7Sy4TXoYAJKP+hUfy5U
	JTFKii71AgId2IfRJhoJb6CViyScq7gRDtF5gU+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648004484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u4ycp6A703+izCUGqwgvhtVthC9m3F3hPk7WkFyO0VY=;
	b=VAXVQCyNTjOcEBws4ij9AN7bbxGGgRlQ11Fq8g0N6boEJOe7RdmGL+tOU0YQeBIf
	nRjAVYoBieQfCfyMTpHouhwDKCRDddhx0YPsP8PGAlaVbaU4YrBpUcMvoE8Ip0N6LoL
	g0jnQtgOq3K8hBJ5FglCtMAy5K0CYng/UljqDbP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4b8ce8d-1bd38bf3-58b0-4193-a42b-a706a1b8f125-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58a96dd39d8eba43291da56bc76a6b96f600fe93bdfd2509355b72c3aae11d6a
Date: Wed, 23 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648004484
