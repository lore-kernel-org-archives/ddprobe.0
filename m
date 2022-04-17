Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB5D639
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650201058;
	h=To:Subject:From:Message-Id:Date;
	bh=GnyBVgIXvaTg/G/TUF9CM2iTGCiRNQvCfH1sEB8csT8=;
	b=MEGF05oKXBEY3+SVw0rMfJ4R+MiPAVLnUF6FKrK7+9FdrP9afzJjAy+JfuzNL3HS
	D0xcri7Z4rsuFJxaKiikV25lLo0B3O5itmY7/pWvwWy1Ek9VO0VDjp6xPiESM1q2/3E
	XBWVxEc7gSFrXd56K3efk30dQYXIAjLdMkfimRD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650201058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GnyBVgIXvaTg/G/TUF9CM2iTGCiRNQvCfH1sEB8csT8=;
	b=kkaNMubyexp0dZYVn93Rk6E8+nUFkV7SZ9RYHiR6Eo42Hp08T7H/ElUG7jKkF62l
	uTqbtAShedJJDPwZAjbe83QNGcTqfU0VgvqsLIl3tNpnyXOAtUC+DtTyAZq5JD/NuO7
	FIbHpX8KXffbLJrrA4kmwlfK3fSxsnW6bmANtsP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037a5dc03-f65e6b2e-30fd-44d8-926f-1f4eb71726f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d52fd1484e9b463dc437154fb64ca03b95f47bc18a8a98ae27aaa3576a794999
Date: Sun, 17 Apr 2022 13:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650201058
