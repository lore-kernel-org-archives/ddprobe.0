Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B495E46A9
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 08:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648195918;
	h=To:Subject:From:Message-Id:Date;
	bh=gC8mvZ7vuwMA6U3Ds/nJeAFAL6g7BWjLPEKZqXACNfY=;
	b=d50oBabiY+DqGNv5mRogPErM4FydKrEessdEd3rQjJopDxDZ7iqS/8ChRW7d7k3N
	ceztO4f5QvmJuytsR/jE4E9Qw0z9p9EMB7WmLGHU7odqR8x7w8DMyWGE6L3maYHQL25
	y7e0Y8IpzHKpg9tnRAMnv/t327aVr8Yvr5ObkFAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648195918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gC8mvZ7vuwMA6U3Ds/nJeAFAL6g7BWjLPEKZqXACNfY=;
	b=EQHRWlRx1/3n2HRd5vuemDOa2E7rHcb3WZ0DCL3VKsOhUHt2/NlfcoInd5QaMBTr
	JQGR+QEzkbDHJ9yMHkwcTWQ5nRTjhepcs+IzxsWKU55OGVwkEmyuPVH70a23ySreQY/
	Ut0YFe6lQSZ3a2Pd7n+ctdRfDW9lixXG3Wad5Z8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc021d9aa-15051342-b205-4d43-a07e-72630b9255d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd23b4875fa08006190ddb612a92f33d840b19e3d430dad8950f1730f753a07d
Date: Fri, 25 Mar 2022 08:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648195918
